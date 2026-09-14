cask "expressions" do
  version "1.3.10"
  sha256 "bb6f033ca5eadb3fd60105c6c2bf2709cb987d78311e7cecdbb0ca14ee24e23a"

  url "https://www.apptorium.com/public/products/expressions/releases/Expressions-#{version}.zip"
  name "Expressions"
  desc "Regular expressions manager app"
  homepage "https://www.apptorium.com/expressions"

  livecheck do
    url "https://www.apptorium.com/expressions/trial"
    regex(%r{href=.*?/Expressions-(\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: :monterey

  app "Expressions.app"

  zap trash: [
    "~/Library/Application Scripts/com.apptorium.Expressions-dm",
    "~/Library/Containers/com.apptorium.Expressions-dm",
  ]
end
