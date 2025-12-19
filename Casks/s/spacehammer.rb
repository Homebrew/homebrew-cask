cask "spacehammer" do
  version "1.6.0"
  sha256 "ccc6d70e296b50a8c8ff461a636eba49d0a1085a58ff4c53c26a8186a548fe27"

  url "https://github.com/agzam/spacehammer/archive/refs/tags/#{version}.tar.gz"
  name "Spacehammer"
  desc "Spacemacs|Doom-inspired modal toolkit for Hammerspoon"
  homepage "https://github.com/agzam/spacehammer"

  # Dependencies are automatically checked by Homebrew
  depends_on cask: "hammerspoon"
  depends_on formula: "luarocks"

  # Homebrew automatically backs up existing ~/.hammerspoon to Caskroom
  artifact "spacehammer-#{version}", target: "#{Dir.home}/.hammerspoon"

  preflight do
    hammerspoon_dir = "#{Dir.home}/.hammerspoon"

    # Warn if ~/.hammerspoon is a git repository (gives user time to cancel)
    if File.exist?("#{hammerspoon_dir}/.git")
      opoo "WARNING: ~/.hammerspoon appears to be a git repository"
      opoo "It will be backed up to the Caskroom, but you may want to commit/push changes first"
      opoo "Press Ctrl+C now to cancel, or wait 5 seconds to continue..."
      sleep 5
    end

    # Remove symlink if present (Homebrew's artifact can't overwrite symlinks)
    if File.symlink?(hammerspoon_dir)
      File.delete(hammerspoon_dir)
      ohai "Removed existing symlink at ~/.hammerspoon"
    end
  end

  postflight do
    # Find luarocks (try Homebrew path first, then system path as fallback)
    luarocks_path = "#{HOMEBREW_PREFIX}/bin/luarocks"
    luarocks_path = `which luarocks 2>/dev/null`.strip unless File.exist?(luarocks_path)

    if luarocks_path.empty? || !File.exist?(luarocks_path)
      opoo "luarocks not found. Spacehammer requires Fennel (>= 1.0.0)"
      opoo "Install with: brew install luarocks && luarocks install fennel"
      return
    end

    # Check if Fennel is installed and verify version
    fennel_check = system_command(luarocks_path, args: ["show", "fennel"], must_succeed: false, print_stderr: false)

    if fennel_check.success?
      # Extract version from output (format: "fennel 1.5.3-1 - ...")
      version_match = fennel_check.stdout.match(/fennel\s+(\d+\.\d+\.\d+)/)
      if version_match
        version = version_match[1]
        major = version.split(".").first.to_i

        if major < 1
          # Upgrade old Fennel version
          opoo "Fennel #{version} is too old (need >= 1.0.0), upgrading..."
          system_command(luarocks_path, args: ["install", "fennel"])
        else
          ohai "Fennel #{version} already installed ✓"
        end
      end
    else
      # Fennel not installed, install it
      ohai "Installing Fennel..."
      result = system_command(luarocks_path, args: ["install", "fennel"], must_succeed: false)
      opoo "Failed to install Fennel. Please run manually: luarocks install fennel" unless result.success?
    end
  end

  uninstall_preflight do
    # Backup ~/.hammerspoon before uninstalling (in addition to Homebrew's backup)
    hammerspoon_dir = "#{Dir.home}/.hammerspoon"
    if File.exist?(hammerspoon_dir) && !File.symlink?(hammerspoon_dir)
      backup_dir = "#{hammerspoon_dir}.backup.#{Time.now.to_i}"
      FileUtils.mv(hammerspoon_dir, backup_dir)
      puts "Backed up ~/.hammerspoon to #{backup_dir}"
    end
  end

  # NOTE: ~/.spacehammer is created automatically by Spacehammer on first launch
  # and is intentionally NOT touched by this cask (user customizations preserved)

  caveats <<~EOS
    Spacehammer has been installed to ~/.hammerspoon

    On first launch, Spacehammer will automatically create:
      ~/.spacehammer/config.fnl (your custom configuration)

    To start using Spacehammer:
      1. Launch Hammerspoon (if not already running)
      2. Press Option+Space (default LEAD key) to open the modal menu

    For more information, visit:
      https://github.com/agzam/spacehammer
  EOS
end
