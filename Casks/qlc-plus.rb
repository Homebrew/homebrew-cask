cask "qlc-plus" do
  version "4.12.6"
  sha256 "a95c360385e36542e9a0f5fe90f7f6b52e2f97fd07c5e06a7dc4daa4ddaca0c6"

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
