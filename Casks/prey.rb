cask "prey" do
  version "1.9.9"
  sha256 "e59d8315b635979cbc980208e04851355e3ef943810c51661d77e3227cce132c"

  url "https://downloads.preyproject.com/prey-client-releases/node-client/#{version}/prey-mac-#{version}-x64.pkg"
  name "Prey"
  desc "Anti-theft, data security, and management platform"
  homepage "https://www.preyproject.com/"

  livecheck do
    url "https://github.com/prey/prey-node-client"
    strategy :github_latest
  end

  pkg "prey-mac-#{version}-x64.pkg"

  uninstall pkgutil:   "com.prey.agent",
            launchctl: "com.prey.agent"

  caveats <<~EOS
    Installing Prey requires your Setup API Key, found on your
    About page on the Setup API Key section, as explained here:

      https://help.preyproject.com/article/316-unattended-install-for-macos

    The API key may be set as an environment variable as follows:

      HOMEBREW_NO_ENV_FILTERING=1 API_KEY="foobar123" brew install --cask prey
  EOS
end
