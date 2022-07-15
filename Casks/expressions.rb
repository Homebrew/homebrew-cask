cask "expressions" do
  version "1.3.6.58"
  sha256 "bc1ebc01e10877825870ceee9ed72509977a6578b5969448f779a1658109107e"

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
