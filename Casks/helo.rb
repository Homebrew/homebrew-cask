cask "helo" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"
  livecheck_arch = Hardware::CPU.intel? ? "mac" : "apple-silicon"

  version "1.6.2"

  if Hardware::CPU.intel?
    sha256 "a22704a4b8f5bc13a9f1c8f6e893657576c20308fe7372ae87306d58d70dca48"
  else
    sha256 "b1ef0c2c300d7c644f91cfc664bb28b3066b86257984b0407b52dd0e7ed59d0d"
  end

  url "https://helo.fra1.digitaloceanspaces.com/helo/HELO-#{version}#{arch}.dmg",
      verified: "helo.fra1.digitaloceanspaces.com/helo/"
  name "HELO"
  desc "Email tester and debugger"
  homepage "https://usehelo.com/"

  livecheck do
    url "https://usehelo.com/download/latest/#{livecheck_arch}"
    strategy :header_match
  end

  auto_updates true

  app "HELO.app"

  zap trash: [
    "~/Library/Application Support/HELO",
    "~/Library/Logs/HELO",
    "~/Library/Preferences/de.beyondco.helo.plist",
    "~/Library/Saved Application State/de.beyondco.helo.savedState",
  ]
end
