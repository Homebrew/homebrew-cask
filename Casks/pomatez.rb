cask "pomatez" do
  version "1.2.3"
  sha256 "695e837bc756987c60bd07616ca0537463c209fcea48f46140ef473a26eb2a1f"

  url "https://github.com/zidoro/pomatez/releases/download/v#{version}/Pomatez-v#{version}-mac.dmg",
      verified: "github.com/zidoro/pomatez/"
  name "Pomatez"
  desc "Pomodoro timer"
  homepage "https://zidoro.github.io/pomatez"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Pomatez.app"

  zap trash: "~/Library/Application Support/pomatez"
end
