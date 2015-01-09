cask :v1 => 'easyfind' do
  version '4.9.2'
  sha256 '7804841f000ca8bf891911d83fa830d33119d6fac4f82e3716481ef1a598702a'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/easyfind/#{version}/EasyFind.app.zip"
  homepage 'http://www.devontechnologies.com/download/products.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'EasyFind.app'
end
