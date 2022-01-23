cask "focuswriter" do
  version "1.7.6"
  sha256 "3431642e61cf11c3d0993fd6b70880cba2cca23043e22b2b2f68f8f8a02ff1bc"

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  name "FocusWriter"
  desc "Distraction-free writing environment"
  homepage "https://gottcode.org/focuswriter/"

  livecheck do
    url :homepage
    regex(/href=.*?FocusWriter[._-]v?(\d+(?:\.\d+)+)\./i)
  end

  app "FocusWriter.app"

  zap trash: "~/Library/Application Support/GottCode/FocusWriter",
      rmdir: "~/Library/Application Support/GottCode"
end
