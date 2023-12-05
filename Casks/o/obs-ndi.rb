cask "obs-ndi" do
  version "4.13.0"
  sha256 "0a18604d710734d3d07a1a4dc8ff2007027444b16944341e84b408546d95272e"

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
    "com.newtek.ndi.runtime",
    "fr.palakis.obs-ndi",
    "'fr.palakis.obs-ndi'",
  ]

  # No zap stanza required
end
