cask "octomouse" do
  version "1.7"
  sha256 "b47639b8b4504834caee65a61c0cbe3a42e798cf4901472241f9ce3ab72793e9"

  url "https://github.com/KonsomeJona/OctoMouse/releases/download/v#{version}/OctoMouse.app.zip"
  name "OctoMouse"
  homepage "https://github.com/KonsomeJona/OctoMouse"

  deprecate! date: "2024-09-08", because: :unmaintained

  app "OctoMouse.app"

  caveats do
    requires_rosetta
  end
end
