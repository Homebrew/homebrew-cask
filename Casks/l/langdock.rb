cask "langdock" do
  version "1.0.5"
  sha256 "41f4a6267fdb582eea458de4a22218193e33adf0043e4816d2167d320e784f41"

  url "https://desktop.langdock.com/global/stable/Langdock-1.0.5-universal.dmg"
  name "Langdock"
  desc "Platform for AI Adoption"
  homepage "https://langdock.com/products/desktop"

  depends_on :macos

  app "Langdock.app"
end
