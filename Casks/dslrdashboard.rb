cask 'dslrdashboard' do
  version '3.5.1'
  sha256 :no_check

  url 'http://dslrdashboard.info/download/osx-x64-v3-5-1/?wpdmdl=614&ind=3BfE7QGMHuRPtMxqkb0aeWbBcG9kuJvReuWFi3GQcG8UEdMpybNTUPnSE125TbMkqcW3KfJbLiPK_WXH0TOTnN9rCk5CD5g0UnJ79Sw5zH0dDVPz3Bza-PRMaAeREEsXjogsjrIPGuzAHwpQr9aUSA'
  name 'DslrDashboard'
  homepage 'http://dslrdashboard.info/'
  license :gratis

  app 'qDslrDashboard.app'
end
