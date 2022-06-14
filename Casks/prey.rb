cask "prey" do
  version "1.10.5"
  sha256 "c2a639844314a04aff3facdefdaa6194046f01456802b666568a63b6b13be49d"

  url "https://downloads.preyproject.com/prey-client-releases/node-client/#{version}/prey-mac-#{version}-x64.pkg"
  name "Prey"
  desc "Anti-theft, data security, and management platform"
  homepage "https://www.preyproject.com/"

  livecheck do
    url "https://github.com/prey/prey-node-client"
  end

  pkg "prey-mac-#{version}-x64.pkg"

  preflight do
    ENV["API_KEY"] = ENV["HOMEBREW_PREY_SETUP_API_KEY"]
  end

  uninstall pkgutil:   "com.prey.agent",
            launchctl: "com.prey.agent"

  caveats <<~EOS
    Installing Prey requires your Setup API Key, found on your
    About page on the Setup API Key section, as explained here:

      https://help.preyproject.com/article/316-unattended-install-for-macos

    The API key may be set as an environment variable as follows:

      HOMEBREW_PREY_SETUP_API_KEY="foobar123" brew install --cask prey
  EOS
end
