cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.6"
  sha256 arm:   "394533acc86c3303312db2bd2c166d168ef35ae8fa99e8c04af8a6dedc192fca",
         intel: "282afdd2f0ab6b414cd131b41ffbab4f48d11936fef62db7e80ec2731b1883d1"

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
