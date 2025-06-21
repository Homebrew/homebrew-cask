cask "distroav" do
  version "6.1.1"
  sha256 "119e88377a3920216ac2f9e29b174d45c43f855baed14c7b282e35378c0e06d3"

  url "https://github.com/DistroAV/DistroAV/releases/download/#{version}/distroav-#{version}-macos-universal.pkg",
      verified: "github.com/DistroAV/DistroAV/"
  name "DistroAV"
  desc "NDI integration for OBS Studio"
  homepage "https://distroav.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "libndi"

  pkg "distroav-#{version}-macos-universal.pkg"

  # The pkg installs the plugin files to /Library/Application Support/obs-studio/plugins
  # however OBS Studio expects them to be in ~/Library/Application Support/obs-studio/plugins
  # so we create symlinks to correctly link the plugin files for OBS Studio.
  postflight do
    puts "Creating #{token} symlinks in ~/Library/Application Support/obs-studio/plugins"
    target = Pathname.new("~/Library/Application Support/obs-studio/plugins").expand_path
    source = "/Library/Application Support/obs-studio/plugins"

    FileUtils.mkdir_p target
    File.symlink("#{source}/distroav.plugin", "#{target}/distroav.plugin")
    File.symlink("#{source}/distroav.plugin.dSYM", "#{target}/distroav.plugin.dSYM")
  end

  uninstall_preflight do
    puts "Removing #{token} symlinks from in ~/Library/Application Support/obs-studio/plugins"
    target = Pathname.new("~/Library/Application Support/obs-studio/plugins").expand_path

    if File.symlink?("#{target}/distroav.plugin")
      File.unlink("#{target}/distroav.plugin", "#{target}/distroav.plugin.dSYM")
    end
  end

  uninstall pkgutil: [
    "'org.distroav.distroav'",
    "org.distroav.distroav",
  ]

  # No zap stanza required
end
