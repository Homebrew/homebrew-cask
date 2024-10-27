cask "distroav" do
  version "6.0.0"
  sha256 "2ac8d78d3aa2914ba11270c02edbbb06924d7a6b0dddb34c407b4ec852b681f5"

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

  uninstall pkgutil: "org.distroav.distroav"

  # No zap stanza required
end
