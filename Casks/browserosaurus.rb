cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "19.0.0"

  if Hardware::CPU.intel?
    sha256 "dc8342b5decb200f7a54a02479c9d8d0d735b1c987032ee6534d93399ee0e184"
  else
    sha256 "0e4dd3014c93b5866d94b1819bfe7cea40eee4a923930dfb632c5e8a3783f226"
  end

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-#{arch}-#{version}.zip"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://github.com/will-stone/browserosaurus"

  auto_updates true

  app "Browserosaurus.app"

  uninstall quit: "com.browserosaurus"

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end
