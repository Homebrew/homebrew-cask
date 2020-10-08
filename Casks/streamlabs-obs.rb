cask "streamlabs-obs" do
  version "0.24.0"
  sha256 "2ae0c5f962eee67cbea1ade534c0f57e08e4d3026c0338db353156cb313ee72e"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+OBS-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://streamlabs.com/slobs/download&user_agent=Mac%20OS%20X"
  name "Streamlabs OBS"
  homepage "https://streamlabs.com/"

  auto_updates true

  app "Streamlabs OBS.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
  ]
end
