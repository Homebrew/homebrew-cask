cask "obs-ndi" do
  version "4.14.0"
  sha256 "ee20eb3bb42ae974f123164b3e467382d8eafb78a2aaf090f333881bf1af6864"

  url "https://github.com/obs-ndi/obs-ndi/releases/download/#{version}/obs-ndi-#{version}-macos-universal.pkg"
  name "obs-ndi"
  desc "NDI integration for OBS Studio"
  homepage "https://github.com/obs-ndi/obs-ndi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "libndi"

  pkg "obs-ndi-#{version}-macos-universal.pkg"

  # The pkg installs the plugin files to /Library/Application Support/obs-studio/plugins
  # however OBS Studio expects them to be in ~/Library/Application Support/obs-studio/plugins
  # so we create symlinks to correctly link the plugin files for OBS Studio.
  postflight do
    puts "Creating #{token} symlinks in ~/Library/Application Support/obs-studio/plugins"
    target = Pathname.new("~/Library/Application Support/obs-studio/plugins").expand_path
    source = "/Library/Application Support/obs-studio/plugins"

    FileUtils.mkdir_p target
    File.symlink("#{source}/obs-ndi.plugin", "#{target}/obs-ndi.plugin")
    File.symlink("#{source}/obs-ndi.plugin.dSYM", "#{target}/obs-ndi.plugin.dSYM")
  end

  uninstall_preflight do
    puts "Removing #{token} symlinks from in ~/Library/Application Support/obs-studio/plugins"
    target = Pathname.new("~/Library/Application Support/obs-studio/plugins").expand_path

    File.unlink("#{target}/obs-ndi.plugin", "#{target}/obs-ndi.plugin.dSYM")
  end

  uninstall pkgutil: [
    "'fr.palakis.obs-ndi'",
    "com.newtek.ndi.runtime",
    "fr.palakis.obs-ndi",
  ]

  # No zap stanza required
end
