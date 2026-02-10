cask "expressions" do
  version "1.3.9"
  sha256 "a4fd66e31d96c9317f6cce54d6b66c5854659e7a8cea50d8ba52d94ce10757cc"

  url "https://www.apptorium.com/public/products/expressions/releases/Expressions-#{version}.zip"
  name "Expressions"
  desc "Regular expressions manager app"
  homepage "https://www.apptorium.com/expressions"

  livecheck do
    url "https://www.apptorium.com/expressions/trial"
    regex(%r{href=.*?/Expressions-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Expressions.app"

  zap trash: [
    "~/Library/Application Scripts/com.apptorium.Expressions-dm",
    "~/Library/Containers/com.apptorium.Expressions-dm",
  ]
end
