cask "jordanbaird-ice" do
  version "0.10.0"
  sha256 "3cdfe5c2252d9d918dd2324ff14302a22ad8026d0c7f0024c74d338c47c45748"

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
