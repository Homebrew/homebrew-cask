cask "crushftp" do
  version "11"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.crushftp.com/early#{version}/CrushFTP#{version}.zip",
      cookies: { "CrushAuth" => "homebrew_homebrew_homebrew_homebrew" }
  name "CrushFTP"
  desc "File transfer server"
  homepage "https://www.crushftp.com/"

  livecheck do
    url "https://www.crushftp.com/download.html"
    regex(/href=.*?CrushFTP(\d+)\.zip/i)
  end

  suite "CrushFTP#{version}"

  # No zap stanza required

  caveats do
    depends_on_java
  end
end
