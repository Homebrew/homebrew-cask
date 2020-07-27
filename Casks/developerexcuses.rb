cask "developerexcuses" do
  version "2.1.3"
  sha256 "e1fe0105be02de196bbae04051abd506bfa2ac7a2c3ba5f9922c70700a2d61b3"

  url "https://github.com/kimar/DeveloperExcuses/releases/download/#{version}/DeveloperExcuses.saver.zip"
  appcast "https://github.com/kimar/DeveloperExcuses/releases.atom"
  name "Developer Excuses Screensaver"
  homepage "https://github.com/kimar/DeveloperExcuses"

  screen_saver "DeveloperExcuses.saver"
end
