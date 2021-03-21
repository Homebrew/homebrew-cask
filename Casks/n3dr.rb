class N3dr < Formula
  desc "Nexus3 Backup and Recovery tool"
  homepage "https://n3dr.releasesoftwaremoreoften.com/"
  version "6.0.5"
  url "https://github.com/030/n3dr/releases/download/#{version}/n3dr-macos-10.15"
  sha256 "a0f6fc096ac7a3470a768b326449c255f3492f2dc52bd1c6980cc351d1218ad7"
  license "MIT"
  bottle :unneeded

  def install
    bin.install "n3dr-macos-10.15" => "n3dr"
  end
  
  test do
    assert_match "n3dr version refs/tags/#{version}",
      shell_output("n3dr --version")
  end
end
