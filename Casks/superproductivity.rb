cask "superproductivity" do
  version "6.3.3"
  sha256 "60a3150cddda5a5fe716424e2382963f73a1c11bd01796166dba673b6ff4a317"

  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip",
      verified: "github.com/johannesjo/super-productivity/"
  appcast "https://github.com/johannesjo/super-productivity/releases.atom"
  name "Super Productivity"
  homepage "https://super-productivity.com/"

  app "superProductivity.app"
end
