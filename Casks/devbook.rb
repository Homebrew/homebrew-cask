cask "devbook" do
  version "0.1.13"
  sha256 :no_check

  name "Devbook"
  desc "Search engine for developers"
  homepage "https://usedevbook.com/"

  livecheck do
    url "https://download.todesktop.com/2102273jsy18baz/latest-mac.yml"
    strategy :page_match do |page|
      YAML.safe_load(page)["version"]
    end
  end

  if Hardware::CPU.intel?
    url "https://download.usedevbook.com/mac/dmg/x64"
  else
    url "https://download.usedevbook.com/mac/dmg/arm64"
  end

  auto_updates true

  app "Devbook.app"

  zap trash: "~/Library/Application Support/com.foundrylabs.devbook/*"
end
