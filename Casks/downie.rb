cask 'downie' do
  version '3.1.2,1735'
  sha256 '0213c05c9878d72645fed228c955f739691ec0d1a52f1dec16ea94ed82edae34'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: 'c6db67fec97f3251d9aa552e6974a370d4116659c49000973fd314bc5d8e0693'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
