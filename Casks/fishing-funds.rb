cask "fishing-funds" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.5.0"

  if Hardware::CPU.intel?
    sha256 "001300be7c3341875f65c129089328b086e72862f8fb94c8a037ab3a3644e7a7"
  else
    sha256 "587a8678eca5dbf9b2d1766bc32492821fdb28221a8a384bd7b38b83e9f4af8e"
  end

  url "https://github.com/1zilc/fishing-funds/releases/download/v#{version}/Fishing-Funds-#{version}#{arch}.dmg",
      verified: "github.com/1zilc/fishing-funds/"
  name "Fishing Funds"
  desc "Display real-time trends of Chinese funds in the menubar"
  homepage "https://ff.1zilc.top/"

  app "Fishing Funds.app"

  zap trash: [
    "~/Library/Application Support/Fishing Funds",
    "~/Library/Logs/Fishing Funds",
    "~/Library/Preferences/com.electron.1zilc.fishing-funds.plist",
  ]
end
