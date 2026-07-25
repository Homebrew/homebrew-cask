cask "igv-desktop" do
  version "2.19.8"
  sha256 "f0640b2877444dd8ab01b47b83215a7ca976481c66f8faad98c0563d7e0577b3"

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_MacApp_#{version}.zip",
      verified: "data.broadinstitute.org/"
  name "Integrative Genomics Viewer (IGV)"
  desc "Visual exploration of genomic data"
  homepage "https://igv.org/doc/desktop/"

  livecheck do
    url "https://igv.org/doc/desktop/DownloadPage/"
    regex(/href=.*?IGV[._-]MacApp[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: :big_sur

  app "IGV_#{version}.app"

  zap trash: [
    "~/.igv",
    "~/igv",
    "~/Library/Preferences/org.broad.igv.plist",
  ]

  caveats do
    depends_on_java "21+"
  end
end
