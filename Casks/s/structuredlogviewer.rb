cask "structuredlogviewer" do
  arch arm: "Arm", intel: "Intel"

  artifact_arch = on_arch_conditional arm: "arm64", intel: "x64"
  appBundle = "StructuredLogViewer.app"

  version "2.1.858"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{artifact_arch}.zip",
      verified: "https://github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "StructuredLogViewer"
  desc "A rich interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  depends_on macos: ">= :big_sur"

  livecheck do
    url :url
    strategy :github_latest
  end

  sha256  arm: "c3491fd31fe2916c9373524fee1a04ae331c04ea253ef571d34e2352f7911489",
          intel: "42ad96cbbacebc9a3756cd82fb9b5877c578da9b8d7a4f0437456d1707f1937c"

  app appBundle

  preflight do
    set_permissions "#{staged_path}/#{appBundle}/Contents/MacOS/StructuredLogViewer.Avalonia", "a+x"
  end
end
