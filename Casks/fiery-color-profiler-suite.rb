cask :v1 => 'fiery-color-profiler-suite' do
  version '4.6.2.08'
  sha256 'cc9614227e7f3e24fbb8862fc16ae1e27d81e8e03f2c07ad30a0ed9823b1c92f'

  url 'https://d1umxs9ckzarso.cloudfront.net/Products/CPS/Mac_FCPS_4.6.2.08.dmg'
  homepage 'http://w3.efi.com/en/Fiery/Products/Workflow-Suite/CPS/Download/thank-you'
  license :unknown

  installer :manual => 'Fiery Color Profiler Suite 4.app'
end
