class OperaNext < Cask
  version :latest
  sha256 :no_check

  url 'http://net.geo.opera.com/opera/beta/mac'
  homepage 'http://www.opera.com/pt/computer/beta'
  license :unknown
  tags :vendor => 'Opera'

  app 'Opera Next.app'
end