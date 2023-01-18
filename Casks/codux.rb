cask "codux" do
  version "14.1.0"
  sha256 :no_check

  url "https://95610582-f2db-4cc9-be23-c529650d1ad9.filesusr.com/archives/b478ab_#{on_intel ? "4886668678ca41e2bcafc6403e4f7f6d" : "d61c0ea5192e4c558ebcc75d5403dbec"}.zip?dn=Codux-#{version}.#{on_intel ? "x64-dmg" : "arm64-arm"}.zip", verified: "https://95610582-f2db-4cc9-be23-c529650d1ad9.filesusr.com/"
  name "Codux"
  desc "React IDE built to visually edit component styling and layouts"
  homepage "https://www.codux.com/"

  livecheck do
    url "https://www.codux.com/download/"
    strategy :page_match
    regex(/href=.*?dn=Codux-(\d{1,4}\.\d{1,2}\.\d{1,2})/i)
  end

  app "Codux.app"
end
