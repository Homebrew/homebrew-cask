cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.4"
  sha256 arm:   "065fdbdaaff9cd04cfa83ba51beaeb60c2b43c46e9f03e978251eba2798788d5",
         intel: "5b254c88dc755525a402e1bfb883d443dd03e226329c166e106cd47e5651ee71"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
