cask "obs-ndi" do
  version "4.13.1"
  sha256 "9367964f1a46667eb1ecbd533dce0c8a4454d44823babfe15cd1a0a6b06ba409"

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
