cask "ksnip" do
  version "1.10.0"
  sha256 "50db49f03b3177053238fb553e632e66cc3edabae7c1d45a2124acbef5e7a81a"

  url "https://github.com/ksnip/ksnip/releases/download/v#{version}/ksnip-#{version}.dmg"
  name "ksnip"
  desc "Screenshot and annotation tool"
  homepage "https://github.com/ksnip/ksnip"

  app "ksnip.app"
end
