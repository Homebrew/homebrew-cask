cask "oak9cli" do
  version "0.11.16"
  sha256 "cef527114243a2d48390f8ed454e56cf83f20135511f4f0eabf3dbed660c8ee2"

  url "https://github.com/oak9io/oak9.cli-public/blob/master/binaries/iac-mac_os-#{version}.zip"
  name "oak9cli"
  desc "This is the cli component of oak9's security compliance SaaS product. Which allows you to scan your IaC for security vulnerabilities and dynamically secure your infrastructure. https://oak9.io"
  homepage "https://github.com/oak9io/oak9.cli-public/"

  app "oak9cli"

  livecheck do
    url :url
    strategy :github_latest
  end

   auto_updates true
   container nested: "oak9"
   zap trash: "./oak9"
end
