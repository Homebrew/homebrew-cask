cask "obs-advanced-scene-switcher" do
  arch arm: "arm64", intel: "universal"

  version "1.20.1"
  sha256 arm:   "54f520a84a885b4611ad2f2f336fedb30880d7d1719c731b2cd9498842094d25",
         intel: "dd5022325b7e16ed9ec954c1be67e1c101eb604dce5255da47f7605514b9b904"

  url "https://github.com/WarmUpTill/SceneSwitcher/releases/download/#{version}/advanced-scene-switcher-macos-#{arch}.pkg",
      verified: "https://github.com/WarmUpTill/SceneSwitcher"
  name "OBS Advanced Scene Switcher"
  desc "Automated scene switcher for OBS Studio"
  homepage "https://obsproject.com/forum/resources/advanced-scene-switcher.395"

  depends_on cask: "obs"

  # FIXME: pkg puts this plugin in wrong directory...
  #        Homebrew moves OBS into
  #          /Applications/OBS.app
  #        However, it continues to use
  #          ~/Library/Application\ Support/obs-studio
  #        Therefore, the plugin should be put in
  #          ~/Library/Application\ Support/obs-studio/plugins/advanced-scene-switcher.plugin
  #        but it gets put in the root library instead
  #          /Library/Application\ Support/obs-studio/plugins/advanced-scene-switcher.plugin
  #        How to solve this?
  #          Should Homebrew be passing something to the installer? "install for me, not all users"?
  #          Is it the package's fault for assuming the app's settings are in the root?
  #          Is it the OBS cask's fault for leaving the settings in ~/Library instead of moving them?
  #          Didn't find any "choices" to set...
  pkg "advanced-scene-switcher-macos-#{arch}.pkg"
  # NOTE: Attempting to fix this with artifact stanza does not work
  #       ==> Moving Generic Artifact 'advanced-scene-switcher.plugin' to
  #           '/Users/sambostock/Library/Application Support/obs-studio/plugins/advanced-scene-switcher.plugin'
  #       ==> Purging files for version 1.20.1 of Cask obs-advanced-scene-switcher
  #       Error: Permission denied @ rb_file_s_rename - (
  #         /Library/Application Support/obs-studio/plugins/advanced-scene-switcher.plugin,
  #         /Users/sambostock/Library/Application Support/obs-studio/plugins/advanced-scene-switcher.plugin,
  #       )
  plugin_path = "/Library/Application Support/obs-studio/plugins/advanced-scene-switcher.plugin"
  artifact plugin_path, target: Dir.home + plugin_path

  uninstall pkgutil: "com.warmuptill.advanced-scene-switcher"
end
