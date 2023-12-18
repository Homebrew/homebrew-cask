cask "icons" do
  version "1.1"
  sha256 "aff6836c0425c845afbc4d71579ebd8adf4d161f03413939ee8579b23782159a"

  url "https://github.com/exherb/icons/releases/download/#{version}/icons-v#{version}-macos-x64.zip"
  name "Icons"
  desc "Tool to generate icons for apps"
  homepage "https://github.com/exherb/icons"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Icons.app"
end
