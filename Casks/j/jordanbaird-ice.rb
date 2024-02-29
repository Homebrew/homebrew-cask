cask "jordanbaird-ice" do
  version "0.6.0"
  sha256 "5938886ce08e333a1d04da37539d6e9d0437357aba6bc06cc05ecd5b58694449"

  url "https://github.com/jordanbaird/Ice/releases/download/#{version}/Ice.zip"
  name "Ice"
  desc "Menu bar manager"
  homepage "https://github.com/jordanbaird/Ice"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Ice.app"

  uninstall quit: "com.jordanbaird.Ice"

  zap trash: "~/Library/Preferences/com.jordanbaird.Ice.plist"
end
