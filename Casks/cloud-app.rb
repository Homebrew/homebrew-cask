class CloudApp < Cask
  version '3.0.1'
  sha256 'fcf0fb9256e02e0e8f3d71cc8466a6d0664cc70bb7a243370e8d790104b34db7'

  url 'https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-3.0.1.zip'
  homepage 'https://www.getcloudapp.com'
  license :closed

  app 'Cloud.app'
end
