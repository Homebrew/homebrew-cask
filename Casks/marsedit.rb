cask 'marsedit' do
  version '3.7.5'
  sha256 '881040881f06dedbddc56e81e0b33179eecf50344f2fdcd10770782887aa9507'

  url "http://www.red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://www.red-sweater.com/marsedit/appcast3.php',
          checkpoint: 'f56ddc257b50c98b0eb8f37bb5002f48acfa07a4bad0b831c56581a5939c83bb'
  name 'MarsEdit'
  homepage 'https://www.red-sweater.com/marsedit/'
  license :commercial

  app 'MarsEdit.app'
end
