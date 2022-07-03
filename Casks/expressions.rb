cask "expressions" do
  version "1.3.5"
  sha256 "764073e2b8caf23263e77ea53000236b51353fb97d2d9339b59a3a5621d47210"

  url "https://www.apptorium.com/public/products/expressions/releases/Expressions-#{version}.zip"
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
