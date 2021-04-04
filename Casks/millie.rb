cask "millie" do
  version "2.11.0"
  sha256 "ddd86f38513a619eb5bfb3b8b5903ae3795f9d704d91c30a23f3b7aa5700ac4f"

  url "https://apis.millie.co.kr/v1/download/installer/mac/Millie-#{version}.dmg"
  name "Millie's Library"
  desc "Korean e-book subscription service"
  homepage "https://www.millie.co.kr/"

  app "Millie.app"
end
