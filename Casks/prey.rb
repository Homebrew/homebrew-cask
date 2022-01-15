cask "prey" do
  version "1.9.16"
  sha256 "0981bd032b9ba64abc51bc97c6615e042e162e9dc0968cec65363acc6158914d"

  url "https://downloads.preyproject.com/prey-client-releases/node-client/#{version}/prey-mac-#{version}-x64.pkg"
  name "Prey"
  desc "Anti-theft, data security, and management platform"
  homepage "https://www.preyproject.com/"

  livecheck do
    url "https://github.com/prey/prey-node-client"
    strategy :github_latest
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
