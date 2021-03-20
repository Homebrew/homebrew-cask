cask "airqmon" do
  version "2.1.0"

  if Hardware::CPU.intel?
    sha256 "6d27f74518748670e9ce299feac6ddca6935b0b0c89c1efe8017e1caec39ba6b"
    url "https://github.com/jsynowiec/airqmon/releases/download/v#{version}/airqmon-v#{version}-darwin-x64.zip",
        verified: "github.com/jsynowiec/airqmon/"
  else
    sha256 "2b6b1654c22f25053bbccc67629cc899b4352c917acd98f0fbfa41d846a7c2ba"
    url "https://github.com/jsynowiec/airqmon/releases/download/v#{version}/airqmon-v#{version}-darwin-arm64.zip",
        verified: "github.com/jsynowiec/airqmon/"
  end

  name "Airqmon"
  homepage "https://airqmon.app/"

  app "Airqmon.app"
end
