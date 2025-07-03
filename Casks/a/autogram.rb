cask "autogram" do
  version "2.5.0"
  sha256 "49d786545cd5515d2e44ae4e38f55cb4f979e75838b0eceaa1e13dce963cc2c0"

  url "https://github.com/slovensko-digital/autogram/releases/download/v#{version}/Autogram-#{version}-MacOs.pkg",
      verified: "github.com/slovensko-digital/autogram/"
  name "autogram"
  desc "Application for electronic signing of signatures"
  homepage "https://sluzby.slovensko.digital/autogram/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "Autogram-#{version}-MacOs.pkg"

  # Following 'preflight' is needed to avoid interactive parts of the instalation process. More details in https://github.com/Homebrew/homebrew-cask/pull/201161#discussion_r1950819869
  preflight do
    FileUtils.mkdir_p "#{Dir.home}/Library/Application Support/Autogram/tls/"
    FileUtils.touch "#{Dir.home}/Library/Application Support/Autogram/tls/skip"
  end

  uninstall quit:    "digital.slovensko.autogram",
            pkgutil: "digital.slovensko.autogram"

  zap trash: [
    "~/Library/Application Support/Autogram",
    "~/Library/Preferences/digital.slovensko.autogram.plist",
    "~/Library/Saved Application State/digital.slovensko.autogram.savedState",
  ]

  caveats do
    license "https://github.com/slovensko-digital/autogram/blob/main/LICENSE"
  end
end
