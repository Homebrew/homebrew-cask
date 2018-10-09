cask 'mockplus' do
  version '3.4.1.0'
  sha256 '9b6e11b380900c7a16895c2f48da13db82a054fb2f78af5f1feafe07fbd3657c'

  # s3-us-west-1.amazonaws.com/mockplus-static was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/mockplus-static/software/macos/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus.app'
end
