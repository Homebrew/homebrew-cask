cask "airqmon" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.1.0"

  url "https://github.com/jsynowiec/airqmon/releases/download/v#{version}/airqmon-v#{version}-darwin-#{arch}.zip",
      verified: "github.com/jsynowiec/airqmon/"
  if Hardware::CPU.intel?
    sha256 "6d27f74518748670e9ce299feac6ddca6935b0b0c89c1efe8017e1caec39ba6b"
  else
    sha256 "2b6b1654c22f25053bbccc67629cc899b4352c917acd98f0fbfa41d846a7c2ba"
  end

  name "Airqmon"
  desc "Air quality information on your menu bar"
  homepage "https://airqmon.app/"

  app "Airqmon.app"
end
