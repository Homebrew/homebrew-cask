cask "expressions" do
  version "1.3.3"
  sha256 "cce8506474d9c071ce9e945c7709e21cadcab2e962805b3b3ba61246723195ad"

  url "https://www.apptorium.com/public/products/expressions/releases/Expressions-#{version}.zip"
  appcast "https://updates.devmate.com/com.apptorium.Expressions-dm.xml"
  name "Expressions"
  desc "Regular expressions manager app"
  homepage "https://www.apptorium.com/expressions"

  app "Expressions.app"

  zap trash: [
    "~/Library/Application Scripts/com.apptorium.Expressions-dm",
    "~/Library/Containers/com.apptorium.Expressions-dm",
  ]
end
