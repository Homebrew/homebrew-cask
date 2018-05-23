cask 'grandtotal' do
  version '5.1.5'
  sha256 'aeda8d79516e5fd6bdfb29b50e606ff05bf638cae404f142c207f57bb4420eef'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '6960c34c6da5c8d319ed744a3f16c11db989a2503fb24dc679573b33a88361af'
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
