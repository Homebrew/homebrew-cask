cask "superproductivity" do
  version "6.5.0"
  sha256 "a38fe9291af66d160e6d1253c617b13bf71d9b6ab8ab9f16c8ba346d59248bed"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
