cask "centered" do
  version "3.3.1"
  sha256 :no_check

  url "https://www.centered.app/api/download?flavor=latest&platform=mac"
  name "Centered"
  desc "Flow State App for Productivity"
  homepage "https://www.centered.app/"

  livecheck do
    url :url
    strategy :header_match
  end

  auto_updates true

  app "Centered.app"
end
