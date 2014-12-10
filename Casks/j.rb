cask :v1 => 'j' do
  version '802'
  sha256 '294cc7a2b92afe43ad19ec7921de2d9a65351ba1c5cfd9836bc07fe9d9a0d159'

  url "http://www.jsoftware.com/download/j#{version}/install/j#{version}_mac64.zip"
  homepage 'http://www.jsoftware.com'
  license :unknown    # todo: improve this machine-generated value

  %w<jbrk jcon jhs jqt>.each do |a|
    app "j64-#{version}/#{a}.app"
  end

  %w<jconsole>.each do |b|
    binary "j64-#{version}/bin/#{b}"
  end
end
