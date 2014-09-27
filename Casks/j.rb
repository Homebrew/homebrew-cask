class J < Cask
  version '803'
  sha256 'a595ab134a72dd8948ba3930678be41d27796f257f67ceb2ee4df58cdf1a82fa'

  url "http://www.jsoftware.com/download/j#{version}/install/j#{version}_mac64.zip"
  homepage 'http://www.jsoftware.com'

  %w<jbrk jcon jhs jqt>.each do |a|
    app "j64-#{version}/#{a}.app"
  end

  %w<jconsole>.each do |b|
    binary "j64-#{version}/bin/#{b}"
  end
end
