cask "jordanbaird-ice" do
  version "0.6.1"
  sha256 "b0d68e6fb47ef7be58d3bfd695d76fbb2118da89e2fcb8d1199b1f2759b4d057"

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
