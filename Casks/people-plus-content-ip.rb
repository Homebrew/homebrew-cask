cask 'people-plus-content-ip' do
  version '1.0.1'
  sha256 '4a29e7eb0901db45572e7dac108df74b52015c75d4aaa9fe774b5027b8bf9990'

  url "http://www.polycom.co.uk/content/dam/polycom/common/documents/firmware/PPCIPmac_v#{version}.dmg.zip"
  name 'People + Content IP'
  homepage 'http://www.polycom.co.uk/products-services/hd-telepresence-video-conferencing/realpresence-accessories/people-content-ip.html#stab1'

  app 'People + Content IP.app'
end
