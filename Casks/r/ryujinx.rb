cask "ryujinx" do
  version "1.3.2"
  sha256 "c157907318348999ce4fb8c8fe8ddd511f0ddea643f22b1529527390180cb700"

  url "https://git.ryujinx.app/api/v4/projects/1/packages/generic/Ryubing/#{version}/ryujinx-#{version}-macos_universal.app.tar.gz"
  name "Ryujinx"
  desc "Nintendo Switch emulator"
  homepage "https://ryujinx.app/"
  app "Ryujinx.app"
  
  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64
end
