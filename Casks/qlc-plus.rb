cask "qlc-plus" do
  version "4.12.4"
  sha256 "63f744f7b55ba9b992aa481cda9049b24f9f568072404a71afe4a4f0a7b71469"

  url "https://qlcplus.org/downloads/#{version}/QLC+_#{version}.dmg"
  name "Q Light Controller+"
  desc "Control DMX or analog lighting systems"
  homepage "https://qlcplus.org/"

  livecheck do
    url "https://github.com/mcallegari/qlcplus"
    regex(/^QLC\+[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "QLC+.app"

  zap trash: "~/Library/Application Support/QLC+"
end
