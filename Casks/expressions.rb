cask "expressions" do
  version "1.3.6.61"
  sha256 "5d0bfa6cee764cf942bdaaddab336461633f1bcfb5737fcd21b3970e5d308adb"

  url "https://cdn.apptorium.com/products/expressions/releases/Expressions-#{version}.zip"
  name "Expressions"
  desc "Regular expressions manager app"
  homepage "https://www.apptorium.com/expressions"

  livecheck do
    url "https://www.apptorium.com/expressions/trial"
    regex(%r{href=.*?/Expressions-(\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: ">= :el_capitan"

  app "Expressions.app"

  zap trash: [
    "~/Library/Application Scripts/com.apptorium.Expressions-dm",
    "~/Library/Containers/com.apptorium.Expressions-dm",
  ]
end
