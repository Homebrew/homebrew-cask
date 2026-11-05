cask "pellucid" do
  version "1.0.3"
  sha256 "b8d218926a448eaef5e245f5920c5249b58d59d3180916199e3a60c03686fb29"

  url "https://downloads.pellucid-pdf.com/releases/#{version}/Pellucid-#{version}-osx-arm64.zip"
  name "Pellucid"
  desc "Annotate, fill and organize PDFs in a native desktop workspace"
  homepage "https://pellucid-pdf.com/"

  livecheck do
    url "https://pellucid-pdf.com/updates/stable.json"
    regex(/"version":\s*"(\d+(?:\.\d+){2})"/i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Pellucid.app"

  zap trash: [
    "~/.local/share/Pellucid",
    "~/Library/Preferences/com.lxman.pellucid.plist",
  ]
end
