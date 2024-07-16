cask "sq-mixpad" do
  version "1.5.1"
  sha256 "99eaf53e1ca0b63cfde57d9d97a5d7628da20d317c4803b51ba2fdcbf225bfb2"

  url "https://www.allen-heath.com/content/uploads/2023/05/SQ-MixPad-#{version}.zip"
  name "SQ MixPad"
  desc "Remote control for Allen & Heath SQ audio consoles"
  homepage "https://www.allen-heath.com/hardware/sq/sq-mixpad/"

  livecheck do
    url "https://www.allen-heath.com/hardware/sq/sq-mixpad"
    regex(/href=.*?SQ[._-]MixPad[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :sierra"

  app "SQ MixPad #{version}.app"

  zap trash: "~/Library/Preferences/com.allen-heath.SQ-MixPad*.plist"

  caveats do
    requires_rosetta
  end
end
