cask 'metanota' do
  version '2.4.1'
  sha256 'baac3496d1fe723ef6cb905aca9a718aac828c56ef4b64cde171bac340bbc124'

  # ge.tt/gett/6GNd4cW was verified as official when first introduced to the cask
  url "http://b2.ge.tt/gett/6GNd4cW/Metanota.app+-+#{version}.zip?index=8&user=user-0VCoSxwzs2zU7LJobQRprdIkhlyNVdCR8TaCFkLR-&download="
  appcast 'https://s3.amazonaws.com/sparkle.metanota.com/appcast.xml',
          checkpoint: 'f54b59d67499e8add469cbec7d5bd206718048837d47df403e6e6c412ab93ca7'
  name 'Metanota'
  homepage 'http://www.metanota.com/'

  app 'Metanota.app'
end
