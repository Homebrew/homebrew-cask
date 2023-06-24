cask "autogram" do
  version "1.99.13"
  sha256 "aa1e9bce316973a5e1d10c9bf5aacbab5c10b44d113a23965e447c8a81296472"

  url "https://github.com/slovensko-digital/autogram/releases/download/v#{version}/Autogram-#{version}.pkg"
  name "autogram"
  desc "Application for electronic signing of signatures"
  homepage "https://github.com/slovensko-digital/autogram"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "Autogram-#{version}.pkg"

  uninstall pkgutil: "digital.slovensko.autogram"
end
